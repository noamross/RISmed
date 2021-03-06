##############################################################
#' Concatenate Medline 
#'
#' Concatenates multiple Medline objects
#'
#' @param x a Medline object
#' @param ... Additional Medline objects to concatenate
#'
#' @return A Medline object
#' @export
#' @docType methods
#' @rdname c-methods
#' @aliases c,ANY,ANY-method
setMethod("c","Medline", function(x, ...){
	
	slots <- slotNames(x)
	
	addx <- list(...)
	addx <- c(list(x), addx)
	
	# Make a list of all the components
	GetComponents <- lapply(addx, function(y){
		result <- lapply(slots, function(z) slot(y, z))
		names(result) <- slots
	result
	})
	
	MeshTerms <- list()
	for(x in GetComponents)
		MeshTerms <- c(MeshTerms, x[["Mesh"]])

	Authors <- list()
	for(x in GetComponents)
		Authors <- c(Authors, x[["Author"]])

	PublicationTypes <- list()
	for(x in GetComponents)
		PublicationTypes <- c(PublicationTypes, x[["PublicationType"]])
					
	new("Medline",
			Query = sapply(GetComponents, function(x) x[["Query"]]),
			PMID = unlist(lapply(GetComponents, function(x) x[["PMID"]])),
			YearAccepted = unlist(lapply(GetComponents, function(x) x[["YearAccepted"]])),
		    MonthAccepted = unlist(lapply(GetComponents, function(x) x[["MonthAccepted"]])),
		    DayAccepted  = unlist(lapply(GetComponents, function(x) x[["DayAccepted"]])),
			HourAccepted = unlist(lapply(GetComponents, function(x) x[["HourAccepted"]])),			
			MinuteAccepted = unlist(lapply(GetComponents, function(x) x[["MinuteAccepted"]])),	
			YearReceived = unlist(lapply(GetComponents, function(x) x[["YearReceived"]])),
		    MonthReceived = unlist(lapply(GetComponents, function(x) x[["MonthReceived"]])),
		    DayReceived  = unlist(lapply(GetComponents, function(x) x[["DayReceived"]])),
			HourReceived = unlist(lapply(GetComponents, function(x) x[["HourReceived"]])),
			MinuteReceived = unlist(lapply(GetComponents, function(x) x[["MinuteReceived"]])),
			YearEpublish = unlist(lapply(GetComponents, function(x) x[["YearEpublish"]])),
		    MonthEpublish = unlist(lapply(GetComponents, function(x) x[["MonthEpublish"]])),
		    DayEpublish  = unlist(lapply(GetComponents, function(x) x[["DayEpublish"]])),
			HourEpublish = unlist(lapply(GetComponents, function(x) x[["HourEpublish"]])),
			MinuteEpublish = unlist(lapply(GetComponents, function(x) x[["MinuteEpublish"]])),
			YearPpublish = unlist(lapply(GetComponents, function(x) x[["YearPpublish"]])),
		    MonthPpublish = unlist(lapply(GetComponents, function(x) x[["MonthPpublish"]])),
		    DayPpublish  = unlist(lapply(GetComponents, function(x) x[["DayPpublish"]])),
			HourPpublish = unlist(lapply(GetComponents, function(x) x[["HourPpublish"]])),
			MinutePpublish = unlist(lapply(GetComponents, function(x) x[["MinutePpublish"]])),
			YearPmc = unlist(lapply(GetComponents, function(x) x[["YearPmc"]])),
		    MonthPmc = unlist(lapply(GetComponents, function(x) x[["MonthPmc"]])),
		    DayPmc  = unlist(lapply(GetComponents, function(x) x[["DayPmc"]])),
			HourPmc = unlist(lapply(GetComponents, function(x) x[["HourPmc"]])),
			MinutePmc = unlist(lapply(GetComponents, function(x) x[["MinutePmc"]])),												    
			YearPubmed = unlist(lapply(GetComponents, function(x) x[["YearPubmed"]])),
		    MonthPubmed = unlist(lapply(GetComponents, function(x) x[["MonthPubmed"]])),
		    DayPubmed  = unlist(lapply(GetComponents, function(x) x[["DayPubmed"]])),
			HourPubmed = unlist(lapply(GetComponents, function(x) x[["HourPubmed"]])),
			MinutePubmed = unlist(lapply(GetComponents, function(x) x[["MinutePubmed"]])),													    
		    ISSN  = unlist(lapply(GetComponents, function(x) x[["ISSN"]])),
		    Title  = unlist(lapply(GetComponents, function(x) x[["Title"]])),		    
		    Author = Authors,
		    ArticleTitle = unlist(lapply(GetComponents, function(x) x[["ArticleTitle"]])),
			ELocationID = unlist(lapply(GetComponents, function(x) x[["ELocationID"]])),
			AbstractText = unlist(lapply(GetComponents, function(x) x[["AbstractText"]])),
			Affiliation = unlist(lapply(GetComponents, function(x) x[["Affiliation"]])),			
			Language = unlist(lapply(GetComponents, function(x) x[["Language"]])),
			PublicationType = PublicationTypes,
			MedlineTA = unlist(lapply(GetComponents, function(x) x[["MedlineTA"]])),
			NlmUniqueID = unlist(lapply(GetComponents, function(x) x[["NlmUniqueID"]])),
			ISSNLinking = unlist(lapply(GetComponents, function(x) x[["ISSNLinking"]])),
			PublicationStatus = unlist(lapply(GetComponents, function(x) x[["PublicationStatus"]])),
			ArticleId = unlist(lapply(GetComponents, function(x) x[["ArticleId"]])),
			Volume = unlist(lapply(GetComponents, function(x) x[["Volume"]])),
			Issue = unlist(lapply(GetComponents, function(x) x[["Issue"]])),
			ISOAbbreviation = unlist(lapply(GetComponents, function(x) x[["ISOAbbreviation"]])),
			MedlinePgn = unlist(lapply(GetComponents, function(x) x[["MedlinePgn"]])),
			CopyrightInformation = unlist(lapply(GetComponents, function(x) x[["CopyrightInformation"]])),
			Country = unlist(lapply(GetComponents, function(x) x[["Country"]])),
			GrantID = unlist(lapply(GetComponents, function(x) x[["GrantID"]])),
			Acronym = unlist(lapply(GetComponents, function(x) x[["Acronym"]])),
			Agency = unlist(lapply(GetComponents, function(x) x[["Agency"]])),
			RegistryNumber = unlist(lapply(GetComponents, function(x) x[["RegistryNumber"]])),
			RefSource = unlist(lapply(GetComponents, function(x) x[["RefSource"]])),
			CollectiveName = unlist(lapply(GetComponents, function(x) x[["CollectiveName"]])),
            Mesh = MeshTerms
	)
	
})