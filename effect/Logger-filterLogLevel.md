Package: `effect`<br />
Module: `Logger`<br />

## Logger.filterLogLevel

Returns a version of this logger that only logs messages when the log level
satisfies the specified predicate.

**Signature**

```ts
declare const filterLogLevel: { (f: (logLevel: LogLevel.LogLevel) => boolean): <Message, Output>(self: Logger<Message, Output>) => Logger<Message, Option.Option<Output>>; <Message, Output>(self: Logger<Message, Output>, f: (logLevel: LogLevel.LogLevel) => boolean): Logger<Message, Option.Option<Output>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Logger.ts#L169)

Since v2.0.0