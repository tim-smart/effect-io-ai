# every

A sink that returns whether all elements satisfy the specified predicate.

To import and use `every` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.every
```

**Signature**

```ts
export declare const every: <In>(predicate: Predicate<In>) => Sink<boolean, In, In>
```
