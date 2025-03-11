## retry

Retry the given `Micro` effect using the provided options.

**Signature**

```ts
declare const retry: { <A, E>(options?: { while?: Predicate<E> | undefined; times?: number | undefined; schedule?: MicroSchedule | undefined; } | undefined): <R>(self: Micro<A, E, R>) => Micro<A, E, R>; <A, E, R>(self: Micro<A, E, R>, options?: { while?: Predicate<E> | undefined; times?: number | undefined; schedule?: MicroSchedule | undefined; } | undefined): Micro<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2944)

Since v3.4.0