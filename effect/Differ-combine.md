# combine

Combines two patches to produce a new patch that describes the updates of
the first patch and then the updates of the second patch. The combine
operation should be associative. In addition, if the combine operation is
commutative then joining multiple fibers concurrently will result in
deterministic `FiberRef` values.

To import and use `combine` from the "Differ" module:

```ts
import * as Differ from 'effect/Differ'

// Can be accessed like this
Differ.combine
```

**Signature**

```ts
export declare const combine: {
  <Patch>(first: Patch, second: Patch): <Value>(self: Differ<Value, Patch>) => Patch
  <Value, Patch>(self: Differ<Value, Patch>, first: Patch, second: Patch): Patch
}
```
