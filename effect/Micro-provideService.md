Package: `effect`<br />
Module: `Micro`<br />

## Micro.provideService

Add the provided service to the current context.

**Signature**

```ts
declare const provideService: { <I, S>(tag: Context.Tag<I, S>, service: S): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, Exclude<R, I>>; <A, E, R, I, S>(self: Micro<A, E, R>, tag: Context.Tag<I, S>, service: S): Micro<A, E, Exclude<R, I>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1974)

Since v3.4.0