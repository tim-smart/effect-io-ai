# splitWhere

Splits the sink on the specified predicate, returning a new sink that
consumes elements until an element after the first satisfies the specified
predicate.

To import and use `splitWhere` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.splitWhere
```

**Signature**

```ts
export declare const splitWhere: {
  <In>(f: Predicate<In>): <R, E, L extends In, Z>(self: Sink<R, E, In, L, Z>) => Sink<R, E, In, In, Z>
  <R, E, L extends In, Z, In>(self: Sink<R, E, In, L, Z>, f: Predicate<In>): Sink<R, E, In, In, Z>
}
```
