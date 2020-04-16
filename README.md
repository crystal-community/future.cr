# future

Provides `delay`, `future`, and `lazy` convenient methods to perform operations in a separate Fiber.

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     future:
       github: crystal-community/future.cr
   ```

2. Run `shards install`

## Usage

```crystal
require "future"

d = delay(1) { Process.signal(Signal::KILL, Process.pid) }
# ... long operations ...
d.cancel
```

## Contributing

1. Fork it (<https://github.com/crystal-community/future.cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Brian J. Cardiff](https://github.com/bcardiff) - creator and maintainer
