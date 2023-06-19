# inspectNone

Useful for debugging purposes, the `onNone` callback is is called if `self` is a `None`.

Part of the `Option` module, imported from `@effect/data/Option`.

**Signature**

```ts
export declare const inspectNone: {
  (onNone: () => void): <A>(self: Option<A>) => Option<A>
  <A>(self: Option<A>, onNone: () => void): Option<A>
}
```
