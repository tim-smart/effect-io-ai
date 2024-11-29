# collectAllWhileWith

Repeatedly runs the sink for as long as its results satisfy the predicate
`p`. The sink's results will be accumulated using the stepping function `f`.

To import and use `collectAllWhileWith` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.collectAllWhileWith
undefined

**Signature**

```ts
export declare const collectAllWhileWith: {
  <A, S>(options: {
    readonly initial: S
    readonly while: Predicate<A>
    readonly body: (s: S, a: A) => S
  }): <In, L extends In, E, R>(self: Sink<A, In, L, E, R>) => Sink<S, In, L, E, R>
  <A, In, L extends In, E, R, S>(
    self: Sink<A, In, L, E, R>,
    options: { readonly initial: S; readonly while: Predicate<A>; readonly body: (s: S, a: A) => S }
  ): Sink<S, In, L, E, R>
}
```
