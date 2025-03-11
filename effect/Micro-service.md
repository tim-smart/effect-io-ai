## service

Access the given `Context.Tag` from the environment.

**Signature**

```ts
declare const service: { <I, S>(tag: Context.Reference<I, S>): Micro<S>; <I, S>(tag: Context.Tag<I, S>): Micro<S, never, I>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1835)

Since v3.4.0