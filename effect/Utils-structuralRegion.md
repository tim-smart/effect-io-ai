# structuralRegion

Note: this is an experimental feature made available to allow custom matchers in tests, not to be directly used yet in user code

To import and use `structuralRegion` from the "Utils" module:

```ts
import * as Utils from "effect/Utils"
// Can be accessed like this
Utils.structuralRegion
```

**Signature**

```ts
export declare const structuralRegion: <A>(
  body: () => A,
  tester?: ((a: unknown, b: unknown) => boolean) | undefined
) => A
```
