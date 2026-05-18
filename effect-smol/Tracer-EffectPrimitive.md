Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.EffectPrimitive

A low-level Effect primitive that can be evaluated by a tracer-specific
context for the current fiber.

**Signature**

```ts
export interface EffectPrimitive<X> {
  [evaluate](this: EffectPrimitive<X>, fiber: Fiber<any, any>): X
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L85)

Since v4.0.0