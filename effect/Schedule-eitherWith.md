## eitherWith

Alias of `unionWith`.

**Signature**

```ts
declare const eitherWith: { <Out2, In2, R2>(that: Schedule<Out2, In2, R2>, f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals): <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<[Out, Out2], In & In2, R2 | R>; <Out, In, R, Out2, In2, R2>(self: Schedule<Out, In, R>, that: Schedule<Out2, In2, R2>, f: (x: Intervals.Intervals, y: Intervals.Intervals) => Intervals.Intervals): Schedule<[Out, Out2], In & In2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schedule.ts#L934)

Since v2.0.0