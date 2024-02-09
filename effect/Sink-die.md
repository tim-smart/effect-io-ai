# die

Creates a sink halting with the specified defect.

To import and use `die` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.die
```

**Signature**

```ts
export declare const die: (defect: unknown) => Sink<never, unknown>
```
