Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.zipRight

The same as `intersect` but ignores the left output.

**Signature**

```ts
declare const zipRight: { <Out2, In2, R2>(that: Schedule<Out2, In2, R2>): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Out2, In & In2, R2 | R>; <Out, In, R, Out2, In2, R2>(self: Schedule<Out, In, R>, that: Schedule<Out2, In2, R2>): Schedule<Out2, In & In2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L2162)

Since v2.0.0