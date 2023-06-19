# nested

Returns a config that has this configuration nested as a property of the
specified name.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const nested: {
  (name: string): <A>(self: Config<A>) => Config<A>
  <A>(self: Config<A>, name: string): Config<A>
}
```
