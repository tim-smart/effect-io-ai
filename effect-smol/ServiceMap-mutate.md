Package: `effect`<br />
Module: `ServiceMap`<br />

## ServiceMap.mutate

Perform a series of mutations on a `ServiceMap`. Prevents unnecessary copying
of the underlying map when multiple mutations are needed.

**Signature**

```ts
declare const mutate: { <Services, B>(f: (serviceMap: ServiceMap<Services>) => ServiceMap<B>): <Services>(self: ServiceMap<Services>) => ServiceMap<B>; <Services, B>(self: ServiceMap<Services>, f: (serviceMap: ServiceMap<Services>) => ServiceMap<B>): ServiceMap<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ServiceMap.ts#L979)

Since v4.0.0