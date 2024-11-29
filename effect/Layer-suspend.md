# suspend

Lazily constructs a layer. This is useful to avoid infinite recursion when
creating layers that refer to themselves.

To import and use `suspend` from the "Layer" module:

ts
import \* as Layer from "effect/Layer"
// Can be accessed like this
Layer.suspend
undefined

**Signature**

```ts
export declare const suspend: <RIn, E, ROut>(evaluate: LazyArg<Layer<ROut, E, RIn>>) => Layer<ROut, E, RIn>
```
