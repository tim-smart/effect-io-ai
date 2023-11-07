# filterLogLevel

Returns a version of this logger that only logs messages when the log level
satisfies the specified predicate.

To import and use `filterLogLevel` from the "Logger" module:

```ts
import * as Logger from 'effect/Logger'

// Can be accessed like this
Logger.filterLogLevel
```

**Signature**

```ts
export declare const filterLogLevel: {
  (f: (logLevel: LogLevel.LogLevel) => boolean): <Message, Output>(
    self: Logger<Message, Output>
  ) => Logger<Message, Option.Option<Output>>
  <Message, Output>(self: Logger<Message, Output>, f: (logLevel: LogLevel.LogLevel) => boolean): Logger<
    Message,
    Option.Option<Output>
  >
}
```
