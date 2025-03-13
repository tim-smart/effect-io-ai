Package: `effect`<br />
Module: `Config`<br />

## Config.validate

Returns a config that describes the same structure as this one, but which
performs validation during loading.

**Signature**

```ts
declare const validate: { <A, B extends A>(options: { readonly message: string; readonly validation: Refinement<A, B>; }): (self: Config<A>) => Config<B>; <A>(options: { readonly message: string; readonly validation: Predicate<A>; }): (self: Config<A>) => Config<A>; <A, B extends A>(self: Config<A>, options: { readonly message: string; readonly validation: Refinement<A, B>; }): Config<B>; <A>(self: Config<A>, options: { readonly message: string; readonly validation: Predicate<A>; }): Config<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L443)

Since v2.0.0