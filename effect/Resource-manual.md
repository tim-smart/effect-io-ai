Package: `effect`<br />
Module: `Resource`<br />

## Resource.manual

Creates a new `Resource` value that must be manually refreshed by calling
the refresh method. Note that error retrying is not performed
automatically, so if you want to retry on errors, you should first apply
retry policies to the acquisition effect before passing it to this
constructor.

**Signature**

```ts
declare const manual: <A, E, R>(acquire: Effect.Effect<A, E, R>) => Effect.Effect<Resource<A, E>, never, Scope.Scope | R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Resource.ts#L108)

Since v2.0.0