Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.ServiceClass

Class type produced by `Service` for an HTTP API middleware service.

**Details**

It combines a `Context.Service` class with the middleware metadata used by
endpoints, builders, and generated clients.

**Signature**

```ts
type ServiceClass<Self, Id, Config, Service> = & Context.Service<Self, Service>
  & {
    new(_: never): Context.ServiceClass.Shape<Id, Service> & {
      readonly [TypeId]: {
        readonly error: Config["error"]
        readonly requires: Config["requires"]
        readonly provides: Config["provides"]
        readonly clientError: Config["clientError"]
        readonly requiredForClient: Config["requiredForClient"]
      }
    }
    readonly [TypeId]: typeof TypeId
    readonly error: ReadonlySet<Schema.Top>
    readonly requiredForClient: Config["requiredForClient"]
    readonly "~ClientError": Config["clientError"]
  }
  & ([keyof Config["security"]] extends [never] ? {} : {
    readonly [SecurityTypeId]: typeof SecurityTypeId
    readonly security: Config["security"]
  })
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L310)

Since v4.0.0