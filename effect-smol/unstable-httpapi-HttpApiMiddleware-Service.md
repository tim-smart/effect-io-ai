Package: `effect`<br />
Module: `HttpApiMiddleware`<br />

## HttpApiMiddleware.Service

Creates a `Context.Service` class for an HTTP API middleware implementation.

Use the optional configuration to declare required services, provided services,
typed error schemas, security schemes, client errors, and whether generated
clients must provide a matching client middleware.

**Signature**

```ts
declare const Service: <Self, Config extends { requires?: any; provides?: any; clientError?: any; } = { requires: never; provides: never; clientError: never; }>() => <const Id extends string, const Error extends ErrorConstraint = never, const Security extends Record<string, HttpApiSecurity.HttpApiSecurity> = never, RequiredForClient extends boolean = false>(id: Id, options?: { readonly error?: Error | undefined; readonly security?: Security | undefined; readonly requiredForClient?: RequiredForClient | undefined; } | undefined) => ServiceClass<Self, Id, { requires: "requires" extends keyof Config ? Config["requires"] : never; provides: "provides" extends keyof Config ? Config["provides"] : never; error: Error; clientError: "clientError" extends keyof Config ? Config["clientError"] : never; requiredForClient: RequiredForClient; security: Security; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiMiddleware.ts#L324)

Since v4.0.0