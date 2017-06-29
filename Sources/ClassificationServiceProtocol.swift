import Vision

public protocol ClassificationServiceProtocol: class {
  init()
  func setup()
  func classify(image: CIImage)
}

public extension ClassificationServiceProtocol {
  /// Handle results of the classification request
  func extractClassificationResult(from request: VNRequest, count: Int) -> String {
    guard let observations = request.results as? [VNClassificationObservation] else {
      return " ¯\\_(ツ)_/¯ "
    }
    return observations
      .prefix(upTo: count)
      .map({ "\($0.identifier) (\($0.confidence.roundTo(places: 3) * 100.0)%)" })
      .joined(separator: "\n\n")
  }
}
