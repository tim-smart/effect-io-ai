# collectAllToSet

A sink that collects all of its inputs into a set.

To import and use `collectAllToSet` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.collectAllToSet
```

**Signature**

```ts
export declare const collectAllToSet: <In>() => Sink<HashSet.HashSet<In>, In>
```
