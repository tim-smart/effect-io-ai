# layer

Share a `Layer` between multiple tests, optionally wrapping
the tests in a `describe` block if a name is provided.

To import and use `layer` from the "index" module:

```ts
import * as index from "@effect/vitest/index"
// Can be accessed like this
index.layer
```

**Signature**

```ts
export declare const layer: <R, E>(
  layer_: Layer.Layer<R, E>,
  options?: { readonly memoMap?: Layer.MemoMap; readonly timeout?: Duration.DurationInput }
) => { (f: (it: Vitest.Methods<R>) => void): void; (name: string, f: (it: Vitest.Methods<R>) => void): void }
```
