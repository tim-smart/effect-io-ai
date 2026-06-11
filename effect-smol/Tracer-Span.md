Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.Span

A span created by an Effect tracer. It carries trace identity, parent,
annotations, attributes, links, sampling and kind information, lifecycle
status, and methods to end the span or add attributes, events, and links.

**Example** (Working with spans)

```ts
import { Context, Exit, Option } from "effect"
import type { Tracer } from "effect"

const attributes = new Map<string, unknown>()
const links: Array<Tracer.SpanLink> = []
let status: Tracer.SpanStatus = {
  _tag: "Started",
  startTime: 1_000_000_000n
}

const span: Tracer.Span = {
  _tag: "Span",
  name: "load-user",
  spanId: "span-1",
  traceId: "trace-1",
  parent: Option.none(),
  annotations: Context.empty(),
  get status() {
    return status
  },
  attributes,
  links,
  sampled: true,
  kind: "internal",
  end(endTime, exit) {
    status = { _tag: "Ended", startTime: status.startTime, endTime, exit }
  },
  attribute(key, value) {
    attributes.set(key, value)
  },
  event(name, startTime, eventAttributes = {}) {
    console.log(`${name} at ${startTime} with ${Object.keys(eventAttributes).length} attributes`)
  },
  addLinks(newLinks) {
    links.push(...newLinks)
  }
}

span.attribute("user.id", "123")
span.end(1_500_000_000n, Exit.succeed("user"))

console.log(span.name) // "load-user"
console.log(span.attributes.get("user.id")) // "123"
console.log(span.status._tag) // "Ended"
```

**Signature**

```ts
export interface Span {
  readonly _tag: "Span"
  readonly name: string
  readonly spanId: string
  readonly traceId: string
  readonly parent: Option.Option<AnySpan>
  readonly annotations: Context.Context<never>
  readonly status: SpanStatus
  readonly attributes: ReadonlyMap<string, unknown>
  readonly links: ReadonlyArray<SpanLink>
  readonly sampled: boolean
  readonly kind: SpanKind
  end(endTime: bigint, exit: Exit.Exit<unknown, unknown>): void
  attribute(key: string, value: unknown): void
  event(name: string, startTime: bigint, attributes?: Record<string, unknown>): void
  addLinks(links: ReadonlyArray<SpanLink>): void
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L349)

Since v2.0.0