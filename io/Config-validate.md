# validate

Returns a config that describes the same structure as this one, but which
performs validation during loading.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const validate: {
  <A, B extends A>(message: string, f: Refinement<A, B>): (self: Config<A>) => Config<B>
  <A>(message: string, f: Predicate<A>): (self: Config<A>) => Config<A>
  <A, B extends A>(self: Config<A>, message: string, f: Refinement<A, B>): Config<B>
  <A>(self: Config<A>, message: string, f: Predicate<A>): Config<A>
}
```
