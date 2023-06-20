# Differ

A `Differ<Value, Patch>` knows how to compare an old value and new value of
type `Value` to produce a patch of type `Patch` that describes the
differences between those values. A `Differ` also knows how to apply a patch
to an old value to produce a new value that represents the old value updated
with the changes described by the patch.

A `Differ` can be used to construct a `FiberRef` supporting compositional
updates using the `FiberRef.makePatch` constructor.

The `Differ` companion object contains constructors for `Differ` values for
common data types such as `Chunk`, `HashMap`, and ` HashSet``. In addition,
 `Differ`values can be transformed using the `transform`operator and combined
using the`orElseEither`and`zip`operators. This allows creating`Differ`
values for arbitrarily complex data types compositionally.

To import and use `Differ` from the "Differ" module:

```ts
import * as Differ from '@effect/data/Differ'

// Can be accessed like this
Differ.Differ
```
