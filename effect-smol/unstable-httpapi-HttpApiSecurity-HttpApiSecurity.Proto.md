Package: `effect`<br />
Module: `HttpApiSecurity`<br />

## HttpApiSecurity.HttpApiSecurity.Proto

Common prototype for security schemes, carrying the credential type and OpenAPI annotations.

**Signature**

```ts
export interface Proto<out A> extends Pipeable {
    readonly [TypeId]: {
      readonly _A: Covariant<A>
    }
    readonly annotations: Context.Context<never>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSecurity.ts#L57)

Since v4.0.0