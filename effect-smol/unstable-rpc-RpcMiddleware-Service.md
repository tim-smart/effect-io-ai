Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.Service

Creates a typed RPC middleware service class, with optional service
requirements, provided services, error schema, and client-side requirement
metadata.

**Signature**

```ts
declare const Service: <Self, Config extends { requires?: any; provides?: any; clientError?: any; } = { requires: never; provides: never; clientError: never; }>() => <const Name extends string, Error extends Schema.Top = Schema.Never, const RequiredForClient extends boolean = false>(id: Name, options?: { readonly error?: Error | undefined; readonly requiredForClient?: RequiredForClient | undefined; } | undefined) => ServiceClass<Self, Name, "provides" extends keyof Config ? Config["provides"] : never, Error, "clientError" extends keyof Config ? Config["clientError"] : never, "requires" extends keyof Config ? Config["requires"] : never, RequiredForClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L258)

Since v4.0.0