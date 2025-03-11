## service

Constructs a layer that accesses and returns the specified service from the
context.

**Signature**

```ts
declare const service: <I, S>(tag: Context.Tag<I, S>) => Layer<I, never, I>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Layer.ts#L691)

Since v2.0.0