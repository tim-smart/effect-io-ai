# dropWhile

Drops incoming elements as long as the predicate is satisfied.

To import and use `dropWhile` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.dropWhile
undefined

**Signature**

```ts
export declare const dropWhile: <In>(predicate: Predicate<In>) => Sink<unknown, In, In>
```
