Konfig
======

Inspired by Matt Thompson's [GroundControl](https://github.com/mattt/GroundControl), Konfig provides a JSON based alternative

## Usage

Loading and storing values:

```objective-c
NSURL * url = [NSURL URLWithString:@"http://localhost:1337/strings.json"];
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


