# withDefault

Returns a config that describes the same structure as this one, but has the
specified default value in case the information cannot be found.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const withDefault: {
  <A2>(def: A2): <A>(self: Config<A>) => Config<A2 | A>
  <A, A2>(self: Config<A>, def: A2): Config<A | A2>
}
```
