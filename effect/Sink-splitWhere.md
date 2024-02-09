# splitWhere

Splits the sink on the specified predicate, returning a new sink that
consumes elements until an element after the first satisfies the specified
predicate.

To import and use `splitWhere` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.splitWhere
```

**Signature**

```ts
export declare const splitWhere: {
  <In>(f: Predicate<In>): <A, L extends In, E, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, In, E, R>
  <A, In, L extends In, E, R>(self: Sink<A, In, L, E, R>, f: Predicate<In>): Sink<A, In, In, E, R>
}
```
