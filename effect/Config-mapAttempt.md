Package: `effect`<br />
Module: `Config`<br />

## Config.mapAttempt

Returns a config whose structure is the same as this one, but which may
produce a different value, constructed using the specified function, which
may throw exceptions that will be translated into validation errors.

**Signature**

```ts
declare const mapAttempt: { <A, B>(f: (a: A) => B): (self: Config<A>) => Config<B>; <A, B>(self: Config<A>, f: (a: A) => B): Config<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L256)

Since v2.0.0