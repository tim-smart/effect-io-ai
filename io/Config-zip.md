# zip

Returns a config that is the composition of this config and the specified
config.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const zip: {
  <B>(that: Config<B>): <A>(self: Config<A>) => Config<readonly [A, B]>
  <A, B>(self: Config<A>, that: Config<B>): Config<readonly [A, B]>
}
```
