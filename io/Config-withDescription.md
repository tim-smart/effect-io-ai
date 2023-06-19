# withDescription

Adds a description to this configuration, which is intended for humans.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const withDescription: {
  (description: string): <A>(self: Config<A>) => Config<A>
  <A>(self: Config<A>, description: string): Config<A>
}
```
