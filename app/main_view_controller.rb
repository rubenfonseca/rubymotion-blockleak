class MainViewController < UIViewController
  def viewDidLoad
    super

    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.frame = [[10, 10], [100, 100]]
    button.setTitle "Set block", forState:UIControlStateNormal
    button.addTarget self, action:"set_block", forControlEvents:UIControlEventTouchUpInside
    view.addSubview button

    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.frame = [[200, 10], [100, 100]]
    button.setTitle "Leak block", forState:UIControlStateNormal
    button.addTarget self, action:"leak_block", forControlEvents:UIControlEventTouchUpInside
    view.addSubview button

    @native_object = NativeObject.alloc.init
    NSLog "#{@native_object.description}"
  end

  def set_block
    @native_object.setBlock ->{
      NSLog "Hello world!"
    }

    NSLog "#{@native_object.description}"
  end

  def leak_block
    @native_object.setBlock nil

    NSLog "#{@native_object.description}"
  end
end
