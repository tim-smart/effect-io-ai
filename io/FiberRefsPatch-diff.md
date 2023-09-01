# diff

Constructs a patch that describes the changes between the specified
collections of `FiberRef`

To import and use `diff` from the "FiberRefsPatch" module:

```ts
import * as FiberRefsPatch from '@effect/io/FiberRefsPatch'

// Can be accessed like this
FiberRefsPatch.diff
```

**Signature**

```ts
export declare const diff: (oldValue: FiberRefs.FiberRefs, newValue: FiberRefs.FiberRefs) => FiberRefsPatch
```
