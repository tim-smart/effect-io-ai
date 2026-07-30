Package: `effect`<br />
Module: `Micro`<br />

## Micro.provideContext

Merge the given `Context` with the current context.

**Signature**

```ts
declare const provideContext: { <XR>(context: Context.Context<XR>): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, Exclude<R, XR>>; <A, E, R, XR>(self: Micro<A, E, R>, context: Context.Context<XR>): Micro<A, E, Exclude<R, XR>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1951)

Since v3.4.0