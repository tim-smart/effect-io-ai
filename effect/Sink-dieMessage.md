# dieMessage

Creates a sink halting with the specified message, wrapped in a
`RuntimeException`.

To import and use `dieMessage` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.dieMessage
```

**Signature**

```ts
export declare const dieMessage: (message: string) => Sink<never, never, unknown, never, never>
```
