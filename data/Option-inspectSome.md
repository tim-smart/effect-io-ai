# inspectSome

Useful for debugging purposes, the `onSome` callback is called with the value of `self` if it is a `Some`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Signature**

```ts
export declare const inspectSome: {
  <A>(onSome: (a: A) => void): (self: Option<A>) => Option<A>
  <A>(self: Option<A>, onSome: (a: A) => void): Option<A>
}
```
