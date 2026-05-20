Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.AnyId

Type-level identifier carried by middleware services to track provided services, required services, errors, client errors, and client requirements.

**Signature**

```ts
export interface AnyId {
  readonly [TypeId]: {
    readonly provides: any
    readonly requires: any
    readonly error: ErrorConstraint
    readonly clientError: any
    readonly requiredForClient: boolean
  }
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L181)

Since v4.0.0