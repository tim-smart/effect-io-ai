# zip

Combines this logger with the specified logger to produce a new logger that
logs to both this logger and that logger.

Part of the `Logger` module, imported from `@effect/io/Logger`.

**Signature**

```ts
export declare const zip: {
  <Message2, Output2>(that: Logger<Message2, Output2>): <Message, Output>(
    self: Logger<Message, Output>
  ) => Logger<Message & Message2, readonly [Output, Output2]>
  <Message, Output, Message2, Output2>(self: Logger<Message, Output>, that: Logger<Message2, Output2>): Logger<
    Message & Message2,
    readonly [Output, Output2]
  >
}
```
