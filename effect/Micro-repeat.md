## repeat

Repeat the given `Micro` effect using the provided options. Only successful
results will be repeated.

**Signature**

```ts
declare const repeat: { <A, E>(options?: { while?: Predicate<A> | undefined; times?: number | undefined; schedule?: MicroSchedule | undefined; } | undefined): <R>(self: Micro<A, E, R>) => Micro<A, E, R>; <A, E, R>(self: Micro<A, E, R>, options?: { while?: Predicate<A> | undefined; times?: number | undefined; schedule?: MicroSchedule | undefined; } | undefined): Micro<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2320)

Since v3.4.0