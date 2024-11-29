# some

A sink that returns whether an element satisfies the specified predicate.

To import and use `some` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.some
undefined

**Signature**

```ts
export declare const some: <In>(predicate: Predicate<In>) => Sink<boolean, In, In>
```
