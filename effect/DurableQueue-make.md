Package: `@effect/workflow`<br />
Module: `DurableQueue`<br />

## DurableQueue.make

A `DurableQueue` wraps a `PersistedQueue`, providing a way to wait for items
to finish processing using a `DurableDeferred`.

```ts
import { DurableQueue, Workflow } from "@effect/workflow"
import { Effect, Schema } from "effect"

// Define a DurableQueue that can be used to derive workers and offer items for
// processing.
const ApiQueue = DurableQueue.make({
  name: "ApiQueue",
  payload: {
    id: Schema.String
  },
  success: Schema.Void,
  error: Schema.Never,
  idempotencyKey(payload) {
    return payload.id
  }
})

const MyWorkflow = Workflow.make({
  name: "MyWorkflow",
  payload: {
    id: Schema.String
  },
  idempotencyKey: ({ id }) => id
})

const MyWorkflowLayer = MyWorkflow.toLayer(
  Effect.fn(function*() {
    // Add an item to the DurableQueue defined above.
    //
    // When the worker has finished processing the item, the workflow will
    // resume.
    //
    yield* DurableQueue.process(ApiQueue, { id: "api-call-1" })

    yield* Effect.log("Workflow succeeded!")
  })
)

// Define a worker layer that can process items from the DurableQueue.
const ApiWorker = DurableQueue.worker(
  ApiQueue,
  Effect.fn(function*({ id }) {
    yield* Effect.log(`Worker processing API call with id: ${id}`)
  }),
  { concurrency: 5 } // Process up to 5 items concurrently
)
```

**Signature**

```ts
declare const make: <Payload extends Schema.Schema.Any | Schema.Struct.Fields, Success extends Schema.Schema.Any = typeof Schema.Void, Error extends Schema.Schema.All = typeof Schema.Never>(options: { readonly name: string; readonly payload: Payload; readonly idempotencyKey: (payload: Payload extends Schema.Struct.Fields ? Schema.Struct<Payload>["Type"] : Payload["Type"]) => string; readonly success?: Success | undefined; readonly error?: Error | undefined; }) => DurableQueue<Payload extends Schema.Struct.Fields ? Schema.Struct<Payload> : Payload, Success, Error>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/DurableQueue.ts#L99)

Since v1.0.0