# die

The stream that dies with the specified defect.

To import and use `die` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.die
```

**Signature**

```ts
export declare const die: (defect: unknown) => Stream<never, never, never>
```
