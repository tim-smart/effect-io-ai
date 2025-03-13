Package: `effect`<br />
Module: `Exit`<br />

## Exit.mapBoth

Maps over the `Success` and `Failure` cases of the specified exit using the
provided functions.

**Signature**

```ts
declare const mapBoth: { <E, A, E2, A2>(options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2; }): (self: Exit<A, E>) => Exit<A2, E2>; <A, E, E2, A2>(self: Exit<A, E>, options: { readonly onFailure: (e: E) => E2; readonly onSuccess: (a: A) => A2; }): Exit<A2, E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L285)

Since v2.0.0