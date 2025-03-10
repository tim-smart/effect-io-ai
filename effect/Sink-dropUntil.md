# dropUntil

Drops incoming elements until the predicate is satisfied.

To import and use `dropUntil` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.dropUntil
```

**Signature**

```ts
export declare const dropUntil: <In>(predicate: Predicate<In>) => Sink<unknown, In, In>
```
