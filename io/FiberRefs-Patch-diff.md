# diff

Constructs a patch that describes the changes between the specified
collections of `FiberRef`

To import and use `diff` from the "Patch" module:

```ts
import * as Patch from '@effect/io/FiberRefs/Patch'

// Can be accessed like this
Patch.diff
```

**Signature**

```ts
export declare const diff: (oldValue: FiberRefs.FiberRefs, newValue: FiberRefs.FiberRefs) => FiberRefsPatch
```
