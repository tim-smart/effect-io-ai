Package: `effect`<br />
Module: `HttpApiBuilder`<br />

## HttpApiBuilder.Handlers

Mutable handler collection for one `HttpApi` group.

**Details**

Each call to `handle` or `handleRaw` registers an endpoint implementation and
adds that endpoint identifier to the type-level set of implemented endpoints.
Endpoint identifiers that were already handled are rejected at the type level.

**Signature**

```ts
export interface Handlers<
  R,
  EndpointsByIdentifier extends Record<string, HttpApiEndpoint.Constraint> = {},
  HandledIdentifiers extends keyof EndpointsByIdentifier = never
> extends Pipeable {
  readonly [HandlersTypeId]: typeof HandlersTypeId
  readonly "~EndpointsByIdentifier": EndpointsByIdentifier
  readonly "~HandledIdentifiers": HandledIdentifiers
  /** @internal */
  readonly group: HttpApiGroup.Top
  /** @internal */
  readonly handlers: Map<string, HandlerRuntime>

  /**
   * Add the implementation for an unhandled `HttpApiEndpoint` to a `Handlers` group.
   */
  handle<
    Identifier extends keyof EndpointsByIdentifier,
    R1
  >(
    identifier: Identifier & NotHandledIdentifier<Identifier, HandledIdentifiers>,
    handler: HttpApiEndpoint.Handler<
      EndpointsByIdentifier[Identifier],
      HttpApiEndpoint.MiddlewareError<EndpointsByIdentifier[Identifier]>,
      R1
    >,
    options?: { readonly uninterruptible?: boolean | undefined } | undefined
  ): Handlers<
    R | HandlerRequirements<EndpointsByIdentifier[Identifier], R1>,
    EndpointsByIdentifier,
    HandledIdentifiers | Identifier
  >

  /**
   * Add implementations for unhandled `HttpApiEndpoint`s in a `Handlers` group.
   */
  handleAll<const HandlersByIdentifier extends HandleAllHandlers<Omit<EndpointsByIdentifier, HandledIdentifiers>>>(
    handlers:
      & HandlersByIdentifier
      & HandleAllExtraKeys<Omit<EndpointsByIdentifier, HandledIdentifiers>, HandlersByIdentifier>
  ): Handlers<
    R | HandleAllRequirements<EndpointsByIdentifier, HandlersByIdentifier>,
    EndpointsByIdentifier,
    HandledIdentifiers | keyof HandlersByIdentifier & keyof EndpointsByIdentifier
  >

  /**
   * Add the implementation for an unhandled `HttpApiEndpoint` to a `Handlers` group.
   * This version opts out of automatic payload decoding and provides the raw request.
   */
  handleRaw<
    Identifier extends keyof EndpointsByIdentifier,
    R1
  >(
    identifier: Identifier & NotHandledIdentifier<Identifier, HandledIdentifiers>,
    handler: HttpApiEndpoint.HandlerRaw<
      EndpointsByIdentifier[Identifier],
      HttpApiEndpoint.MiddlewareError<EndpointsByIdentifier[Identifier]>,
      R1
    >,
    options?: { readonly uninterruptible?: boolean | undefined } | undefined
  ): Handlers<
    R | HandlerRequirements<EndpointsByIdentifier[Identifier], R1>,
    EndpointsByIdentifier,
    HandledIdentifiers | Identifier
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiBuilder.ts#L261)

Since v4.0.0