# map

Returns a config whose structure is the same as this one, but which produces
a different value, constructed using the specified function.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): (self: Config<A>) => Config<B>
  <A, B>(self: Config<A>, f: (a: A) => B): Config<B>
}
```
