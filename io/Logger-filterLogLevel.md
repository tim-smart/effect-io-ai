# filterLogLevel

Returns a version of this logger that only logs messages when the log level
satisfies the specified predicate.

Part of the `Logger` module, imported from `@effect/io/Logger`.

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
