Package: `effect`<br />
Module: `Logger`<br />

## Logger.zip

Combines this logger with the specified logger to produce a new logger that
logs to both this logger and that logger.

**Signature**

```ts
declare const zip: { <Message2, Output2>(that: Logger<Message2, Output2>): <Message, Output>(self: Logger<Message, Output>) => Logger<Message & Message2, [Output, Output2]>; <Message, Output, Message2, Output2>(self: Logger<Message, Output>, that: Logger<Message2, Output2>): Logger<Message & Message2, [Output, Output2]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L382)

Since v2.0.0