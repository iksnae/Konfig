# Konfig

JSON based remote configuration for iOS apps

Inspired by Matt Thompson's [GroundControl](https://github.com/mattt/GroundControl), Konfig provides a JSON based alternative for remote configuration of iOS apps


## Usage

Loading and storing values:

```objective-c
NSURL * url = [NSURL URLWithString:@"http://example.com/strings.json"];
[[NSUserDefaults standardUserDefaults]registerKonfigWithURL:url];
```
## Example Data

```json
{
    "my_string": "this is my custom string provided via Konfig",
    "my_number": 256,
    "my_bool": false,
    "my_array": [ 123, 456, 789 ],
    "my_dict": {
        "a": "foo",
        "b": "bar"
    }
}
```

## Installation

Konfig is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "Konfig"

## Author

Khalid Mills, mustkre8@gmail.com

## License

Konfig is available under the MIT license. See the LICENSE file for more info.
