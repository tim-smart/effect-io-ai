# lift2

Lifts a binary function into `Option`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Signature**

```ts
export declare const lift2: <A, B, C>(
  f: (a: A, b: B) => C
) => { (self: Option<A>, that: Option<B>): Option<C>; (that: Option<B>): (self: Option<A>) => Option<C> }
```
