# PoisonPill

A PoisonPill is a special value that tells a behaviour entity to shut itself down.
PoisonPill is handled only when you are using a Queue-based RecipientBehaviour.
Other RecipientBehaviour such as fromFunctionEffect would not care about PoisonPill.

To import and use `PoisonPill` from the "PoisonPill" module:

```ts
import * as PoisonPill from "@effect/cluster/PoisonPill"
// Can be accessed like this
PoisonPill.PoisonPill
```
